@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
  
    
@stop

@section('content')
<h2>Todo sobre tus Peliculas favoritas</h2>
<p>Bienvenido a esta pagina de peliculas.</p>
<div class="row">
   <div class="col-lg-3 col-6">
      <div class="small-box bg-info">
         <div class="inner">
            <h3>{{$counts['peliculas']}}</h3>
            <p>Nuestras peliculas</p>
         </div>
         <div class="icon">
            <i class="ion ion-bag"></i>
         </div>
         <a href="peliculas" class="small-box-footer">Mas Informacion <i class="fas fa-arrow-circle-right"></i></a>
      </div>
   </div>
   <div class="col-lg-3 col-6">
      <div class="small-box bg-success">
         <div class="inner">
            <h3>{{$counts['alquiler']}}<sup style="font-size: 20px"></sup></h3>
            <p>Peliculas Alquiladas</p>
         </div>
         <div class="icon">
            <i class="ion ion-stats-bars"></i>
         </div>
         <a href="alquilers" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
   </div>
   <div class="col-lg-3 col-6">
      <div class="small-box bg-warning">
         <div class="inner">
            <h3>{{$counts['usuarios']}}</h3>
            <p>Socios</p>
         </div>
         <div class="icon">
            <i class="ion ion-person-add"></i>
         </div>
         <a href="generos" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
   </div>
   <div class="col-lg-3 col-6">
      <div class="small-box bg-danger">
         <div class="inner">
            <h3>{{$counts['generos']}}</h3>
            <p>Genero de pelicula</p>
         </div>
         <div class="icon">
            <i class="ion ion-pie-graph"></i>
         </div>
         <a href="generos" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
   </div>
</div>
<h2>Todo sobre Actores</h2>
<div class="row">
   <div class="col">
      <div class="info-box">
         <span class="info-box-icon bg-info"><i class="far fa-envelope"></i></span>
         <div class="info-box-content">
            <span class="info-box-text">Actores</span>
            <span class="info-box-number">{{$counts['actors']}}</span>
         </div>
         <!-- /.info-box-content -->
      </div>
      <!-- /.info-box -->
   </div>
   <!-- /.col -->
   <div class=" col-6">
      <div class="info-box">
         <span class="info-box-icon bg-success"><i class="far fa-flag"></i></span>
         <div class="info-box-content">
            <span class="info-box-text">Directores</span>
            <span class="info-box-number">{{$counts['directors']}}</span>
         </div>
         <!-- /.info-box-content -->
      </div>
      <!-- /.info-box -->
   </div>
   <!-- /.col -->
   <!-- /.col -->
</div>

<div class="row">
    <div class="col-6">
        <div class="card">
            <div class="card-header">
                    <h3><i class="fas fa-chart-pie"></i> Generos mas vistos</h3>
            </div>
            <div class="card-body">
                
                <div style="height: 400px; margin: 20px; padding: 10px;">
                    <canvas id="myChart" height="400"></canvas>
                </div>
            </div>
        </div>
    </div>
    <div class="col-6">
        <div class="card">
            <div class="card-header">
                    <h3><i class="fas fa-chart-pie"></i> Ventas por mes</h3>
            </div>
            <div class="card-body">
                <div style="height: 400px; margin: 20px; padding: 10px;">
                    <canvas id="myChart2" height="400"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-6">
        <div class="card">
            <div class="card-header">
                    <h3><i class="fas fa-chart-pie"></i> Nuestros Generos</h3>
            </div>
            <div class="card-body">
                
                <div style="height: 400px; margin: 20px; padding: 10px;">
                <canvas id="pieChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%; display: block; width: 502px;" width="502" height="250" class="chartjs-render-monitor"></canvas>
                </div>
                @foreach($generos as $genero)
                    {{$genero}}
                @endforeach
            </div>
        </div>
    </div>
    <div class="col-6">
    <div class="card">
              <div class="card-header border-transparent">
                <h3 class="card-title">Estrenos Populares</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
              <div class="table-responsive">
					<table class="table table-bordered table-sm">
						<thead class="thead">
							<tr> 
								<td>#</td> 
								<th>nombre</th>
								<th>costo</th>
								<th>fechaestreno</th>
								<td>ACCIONES</td>
							</tr>
						</thead>
						<tbody>
							@foreach($peliculas as $row)
							<tr>
								<td>{{ $loop->iteration }}</td> 
								<td>{{ $row->pelnombre }}</td>
								<td>{{ $row->pelcosto }}</td>
								<td>
                                    @if(($row->pelcosto)>50)
                                        <span class="badge badge-gray">Popular</span></td>
                                    @elseif(($row->pelcosto)<50)
                                        <span class="badge badge-warning">No popular</span></td>
                                    @else (($row->pelcosto)<100)
                                        <span class="badge badge-success">No popular</span></td>
                                    @endif
                                
								<td width="90">
								<div class="btn-group">
									<button type="button" class="btn btn-info btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									Acciones
									</button>
									<div class="dropdown-menu dropdown-menu-right">
									<a data-toggle="modal" data-target="#updateModal" class="dropdown-item" wire:click="edit({{$row->id}})"><i class="fa fa-edit"></i> Editar </a>							 
									<a class="dropdown-item" onclick="confirm('Confirm Delete Pelicula id {{$row->id}}? \nDeleted Peliculas cannot be recovered!')||event.stopImmediatePropagation()" wire:click="destroy({{$row->id}})"><i class="fa fa-trash"></i> Borrar </a>   
									</div>
								</div>
								</td>
							@endforeach
						</tbody>
					</table>						
					</div>
				</div>
                <!-- /.table-responsive -->
              </div>
              <!-- /.card-body -->
              <div class="card-footer clearfix">
                <a href="javascript:void(0)" class="btn btn-sm btn-info float-left">Place New Order</a>
                <a href="javascript:void(0)" class="btn btn-sm btn-secondary float-right">View All Orders</a>
              </div>
              <!-- /.card-footer -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->

    </div>
</div>

@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop
    
@section('js')
<script>
    const cData = JSON.parse(`<?php echo $data; ?>`);
    console.log(cData);
    const ctx = document.getElementById('myChart').getContext('2d');
    const myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: cData.label,
        datasets: [{
            label: '# Generos',
            data: cData.data,
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        maintainAspectRatio: false,
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});

</script>

<script>
    
    const ctx2 = document.getElementById('myChart2').getContext('2d');
    const myChart2 = new Chart(ctx2, {
    type: 'line',
    data: {
        labels: ["Enero","Febrero","Marzo","abril","Mayo","Junio"],
        datasets: [{
            label: '# Generos',
            data: {{$dato['dato']}},
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 3
        }]
    },
    options: {
        maintainAspectRatio: false,
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});


var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
  var pieData = {
    labels: [],
    datasets: [
      {
        data: [700, 500, 400, 600, 300, 100],
        backgroundColor: ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc', '#d2d6de']
      }
    ]
  }
  var pieOptions = {
    legend: {
      display: false
    }
  }
  // Create pie or douhnut chart
  // You can switch between pie and douhnut using the method below.
  // eslint-disable-next-line no-unused-vars
  var pieChart = new Chart(pieChartCanvas, {
    type: 'doughnut',
    data: pieData,
    options: pieOptions
  })

</script>



@stop