<?php

namespace Botble\Profile\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Profile\Http\Requests\ProfileRequest;

use Botble\Profile\Models\Profile;
use App\User;
use Botble\Blog\Models\Category;
use Botble\Blog\Models\Post;
use Illuminate\Support\Facades\DB;

class ProfileForm extends FormAbstract
{
    /**
     * @return mixed|void
     * @throws \Throwable
     */
    public function buildForm()
    {
        $this
            ->setModuleName(PROFILE_MODULE_SCREEN_NAME)
            ->setupModel(new Profile)
            ->setValidatorClass(ProfileRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label' => trans('core/base::forms.name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr' => [
                    'placeholder'  => trans('core/base::forms.name_placeholder'),
                    'data-counter' => 120,
                ],
            ])
            ->add('description', 'textarea', [
                'label'      => trans('core/base::forms.description'),
                'label_attr' => ['class' => 'control-label'],
                'attr'       => [
                    'rows'         => 4,
                    'placeholder'  => trans('core/base::forms.description_placeholder'),
                    'data-counter' => 400,
                ],
            ])
            ->add('content', 'editor', [
                'label'      => trans('core/base::forms.content'),
                'label_attr' => ['class' => 'control-label'],
                'attr'       => [
                    'rows'            => 4,
                    'placeholder'     => trans('core/base::forms.description_placeholder'),
                    'with-short-code' => true,
                ],
            ])
            ->add('image', 'mediaImage', [
                'label'      => trans('core/base::forms.image'),
                'label_attr' => ['class' => 'control-label'],
            ])
            ->add('status', 'customSelect', [
                'label'      => trans('core/base::tables.status'),
                'label_attr' => ['class' => 'control-label required'],
                'attr' => [
                    'class' => 'form-control select-full',
                ],
                'choices'    => BaseStatusEnum::labels(),
            ])
            ->add('author_id', 'customSelect', [
                'label'      => "Tài khoản",
                'label_attr' => ['class' => 'control-label required'],
                'attr' => [
                    'class' => 'form-control select-full',
                ],
                'choices'    => ProfileForm::get_IdUser(),
            ])
            ->add('khoa_id', 'customSelect', [
                'label'      => "Khoa",
                'label_attr' => ['class' => 'control-label required'],
                'attr' => [
                    'class' => 'form-control select-full',
                ],
                'choices'    => ProfileForm::get_khoa(),
            ])
            ->add('chucvu', 'text', [
                'label'      => "Chức vụ",
                'label_attr' => ['class' => 'control-label'],
            ])
            ->setBreakFieldPoint('status');
    }

    public function get_IdUser(){
        $id = [];
        if(auth()->user()->super_user == 1) {
            foreach (User::select('id', 'username')->get() as $key){
                $id[$key->id]= $key->username;
            }
        }else{
            $id[1] = auth()->user()->username;
        }
        return $id;
    }
    public function get_khoa(){
            $id_postCategori = Category::where("name", "Bộ môn & trung tâm")->pluck('id')->toarray();
            $data = DB::table('post_categories')->where('category_id', $id_postCategori[0])->pluck('post_id')->toarray();
            $id = [];
            foreach (Post::select('id', 'name')->whereIn('id', $data)->get() as $key) {
                $id[$key->id] = $key->name;
            }
        return $id;
    }
}
