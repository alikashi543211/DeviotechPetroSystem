<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
//namespace App\Http\Controllers;
use App\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function addcategory()
    {
        //
        return view('Admin/category/addcategory');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function createcategory(Request $request)
    {
        $request->validate([
            'name'=> 'required',
        ]);

        Category::create([
            'name' => $request->name,
        ]);
        return redirect()->route('listcategory')->with('message','Category created successfully');

    }

    public function listcategory()
    {
        $category = Category::all();
        return view('Admin/category/listcategory',compact('category'));
    }


    public function editcategory($id)
    {
        $category = Category::find($id);
        return view('Admin/category/editcategory',compact('category'));
    }

    
    public function updatecategory(Request $request, $id)
    {
         $request->validate([
             'name' => 'required',
         ]);

       // $id =  $request->id;

        $category = Category::find($id);
        $category->name = $request->name;
        $category->save();

        if($id == 0){
            return redirect()->route('listcategory')->with('message','category saved successfully');
            }else{
        return redirect()->route('listcategory')->with('message','Category updated successfully');
            }
       // return redirect()->route('listcategory');
    }

    
    public function deletecategory($id)
    {
        $category = Category::find($id);
        $category->delete();
        return redirect()->route('listcategory')->with('message','Category deleted successfully');
    }
}
