<jsp:include page="head-tag.jsp"/>

<body class="bg-light">

  <jsp:include page="nav.jsp" />
  <div class="container-fluid">
    <div class="container mt-2 pt-4 pb-3">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="background: transparent;">
          <li class="breadcrumb-item"><a href="#">Instructor</a></li>
          <li class="breadcrumb-item active" aria-current="page">Email</li>
        </ol>
      </nav>
    </div>
  </div>

  <!-- Tabs -->
  <div class="container-fluid">
    <div class="container">
      <ul class="nav nav-tabs">
        <li class="nav-item">
          <a class="nav-link active" href="instructor.jsp">Email</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="template.jsp">Template</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="classes.jsp">Manage Classes</a>
        </li>
      </ul>
    </div>
  </div>

  <div class="container-fluid bg-white h-100">
    <div class="container pb-5 pt-4">
      <div class="row">
        <div class="col-md-12">
          <div class="btn-group">
            <button class="btn btn-sm btn-ghost dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Choose Class
            </button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">Course ID: #1</a>
              <a class="dropdown-item" href="#">Course ID: #2</a>
              <a class="dropdown-item" href="#">Course ID: #3</a>
            </div>
          </div>
        </div>
      </div>
      <div class="card mt-3">
        <div class="card-header">
          Class Members
        </div>
        <div class="card-body">
          <!--
            <h5 class="card-title">Special title treatment</h5>
            <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          -->
          <table class="table table-sm table-striped table-bordered">
            <thead>
              <tr>
                <th class="" style="width: 10%;" scope="col">#</th>
                <th class="" style="width: 70%;" scope="col">Name</th>
                <th class="" style="width: 20%;" scope="col">Send Email</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>Kevin Jones</td>
                <td class="text-center">
                  <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="customCheck" name="example1">
                    <label class="custom-control-label" for="customCheck">Check this custom checkbox</label>
                  </div>
                </td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>Phillip Phoong</td>
                <td class="text-center"><input type="checkbox"></td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td>Jared Brick</td>
                <td class="text-center"><input type="checkbox"></td>
              </tr>
              
            </tbody>
          </table>
          <div class="row justify-content-center">
            <a href="" class="btn btn-small btn-success rounded-0 px-3">Send Report</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- /Tabs -->

  <!-- Optional JavaScript -->

  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <!-- Popper.js -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <!-- Bootstrap.js -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>