<?php

namespace App\Http\Controllers;
//this is advance request form by Raheem command{ php artisan make:request CreateFormRequest
// //class name}
use App\Http\Requests\CreateFormRequest;

//post model
use App\Post;
use Validator;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Input;


use App\Http\Requests;
use App\Http\Controllers\Controller;


class PostController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        $result_array = array(
            'posters' => Post::latest()->get()
        );


       return view('post/index', $result_array);
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('post/create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     *
     *   public function store(Request $request) <- this is previous default controller
     * after that we using new request class for advance form validation
     */
    public function store(CreateFormRequest $request)
    {

      //basic validation advance form validation define on app->http->request using artisan command
//        $this->validate($request, [
//            'title' => 'required|max:20',
//            'body' => 'required',
//        ]);

        //get all HTTp requests
      // Post::create($request->all());


//        $request->file('file');
//
//        if($request->hasFile('file')){
//            $destination = '../public/image';
//            $file = $request->file('file');
//            $file->move($destination, $file->getClientOriginalName());
//        }
//
//        $filelocation = $destination. "/" .$file->getClientOriginalName();
//
//        dd($filelocation);



        $input = $request->all();

        if($file = $request->file('file')){
            $name =  Input::file('file');

            $img_name= $name->getClientOriginalName();

            $file->move('public/images',$img_name );
            $input['path'] =  $img_name;
        }



        Post::create($input);




        //return redirect('/post');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
       $post = Post::findOrFail($id);

        $array_data = array(
            'poster' => $post,
        );

       return view('post/show', $array_data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Post::findOrFail($id);

        return view('post.edit', compact('post'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $post = Post::findOrfail($id);

        $post->update($request->all());

        //return redirect('/post/'.$id.'/edit');

        return redirect('/post');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::whereId($id)->forceDelete();

        return redirect('/post');
    }

    //contact custom controller with view
    public function contact(){

        $arrayData = array(
          'persons'=> ['Raheem', 'Younus', 'Afridi', 'Infas','Mosh'],
          'vehicle'=>['BMW', 'Ferari','Bugati','Honda']
        );
        return view('page/contact',$arrayData);
    }

    //passing data to view
    public function showdata($id, $description){

        $data = array(
            'id' => $id,
            'description' => $description
        );
        return view('page/showdata',$data);
    }



}
