<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Socio;
use App\Models\Pelicula;
use App\Models\Alquiler;
use App\Models\Genero;
use App\Models\Actor;
use App\Models\Director;
use App\Models\Formato;
use App\Models\Sexo;
use DB;

class HomeController extends Controller


{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function reportAlquiler()
    {
        $alquilers= Alquiler::all();
        
        return view('livewire.reports.alquiler', [
            'alquilers'=>$alquilers
        ]);    
    }

    public function reportPelicula()
    {
        $peliculas= Pelicula::all();
        
        return view('livewire.reports.pelicula', [
            'peliculas'=>$peliculas
        ]);    
    }

    public function reportSocio()
    {
        $socios= Socio::all();
        
        return view('livewire.reports.socio', [
            'socios'=>$socios
        ]);    
    }

    public function reportGenero()
    {
        $generos= Genero::all();
        
        return view('livewire.reports.genero', [
            'generos'=>$generos
        ]);    
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {

        $dato = $this->getDato();
        $generos = $this->getDatoLabel();
        $dato_label =  json_encode(DB::table('directors')->select('dirnombre')->get());
        $data = $this->getData();
        $counts = $this->getCounts();
        $peliculas = Pelicula::all();
        //dd($dato_label);
        //dd($data, $dato);
        return view('home',[ 
            'counts'=>$counts,
            'dato'=>$dato,
            'dato_label'=>$dato_label,
            'peliculas'=>$peliculas,
            'generos'=>$generos
        
        ],$data);
        
        
    }

   
    public function getData(){
        $generos = Genero::all();
        $data = [];
        foreach( $generos as $genero){
            $data['label'][] = $genero->gennombre;
            //$data['data'][] = Alquiler::all()->where('pel_id', ($pel = optional(Pelicula::where('gen_id',$genero->id)->first()->id)) ? $pel : 0)->count();
            $data['data'][] = Pelicula::all()->where('gen_id',$genero->id)->count();
        }
        $data['data'] = json_encode($data);
        return $data;
    }

    public function getDato(){
        $directors = Director::all(); 
        $dato = [];
        foreach( $directors as $director){
            array_push($dato, (Pelicula::all()->where('dir_id',$director->id)->count()));
        }
        $var['dato'] = json_encode($dato);
        return $var;
    }

    public function getDatoLabel(){
        $generos = Genero::all();
        $dato = [];
        $var = [];
        foreach($generos as $genero){{
            array_push($dato,(Genero::select('gennombre')->get()));
        }
        $var['gennombre'] = json_encode($dato);
        return $var;

        }
    }

 

    public function getCounts(){
        $total_usuarios = Socio::all()->count();
        $total_peliculas = Pelicula::all()->count();
        $total_alquiler = Alquiler::all()->count();
        $total_generos = Genero::all()->count();
        $total_actors = Actor::all()->count();
        $total_directors = Director::all()->count();
        $total_formatos = Formato::all()->count();
        $total_sexos = Sexo::all()->count();
        $counts=[
            'usuarios' => $total_usuarios,
            'peliculas' => $total_peliculas,
            'alquiler' => $total_alquiler, 
            'generos' => $total_generos,
            'actors' => $total_actors, 
            'directors' => $total_directors,
            'formatos' => $total_formatos,
            'sexos' => $total_sexos,
        ];
        return $counts;
    }
   
       
}
