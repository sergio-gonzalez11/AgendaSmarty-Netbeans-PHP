{extends file='base.tpl'}
{block name=title}Nuevo Alumno{/block}
{block name=body}
    <section class="container">
        {if isset($confirmacion)}
            <section class="row">
                <section class="col-md-6 col-md-offset-3 alert alert-success" role="alert">
                    {$confirmacion}
                </section>
            </section>
        {/if}
        {if isset($error)}
            <section class="row">
                <section class="col-md-6 col-md-offset-3 alert alert-danger" role="alert">
                    {$error}
                </section>
            </section>
        {/if}
        <section class="row">
            <section class="col-md-6 col-md-offset-3 panel-group">
                <section class="panel panel-primary">
                    <section class="panel-heading">Formulario de modificación</section>
                    <section class="panel-body">
                        <form action="" id='formulario' method="POST">
                            <section class="form-group">
                                <label>DNI:</label>
                                <input class="form-control" name="dni" required placeholder="DNI del alumno">
                            </section>
                            <section class="form-group">
                                <label>Nombre:</label>
                                <input class="form-control" name="nombre" required placeholder="Nombre del alumno">
                            </section>
                            <section class="form-group">
                                <label>Curso:</label>
                                <input class="form-control" name="curso" required placeholder="Curso">
                            </section>
                            <section class="form-group row">
                                <section class="custom-control custom-control-inline">
                                    <input type="button" id='volver' value="Cancelar" class='col-md-4 col-md-offset-1 btn btn-danger' onclick="valorOperacion()">
                                </section>
                                <section class="custom-control custom-control-inline">
                                    <input type="submit" id='confirmar' value="Registrar" class='col-md-4 col-md-offset-2 btn btn-success' onclick="return confirm('¿Está seguro que quiere registrar al alumno?')">
                                </section>
                            </section>
                            <input type='hidden' id="op" name="operacion" value="altaalumno">
                        </form>
                    </section>
                </section>
            </section>
        </section>
    </section>
{/block}
    {block name=footer}
    <div class="footer navbar-fixed-bottom text-center"> 
        <h3> Sergio González Ruano &copy; 2DAW 2018</h3>
    </div>
    {/block}
{*El |escape: 'html:'html sirve para que el codigo no se ejecute como html*}