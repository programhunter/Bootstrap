<jsp:include page="head-tag.jsp"/>

<body class="bg-light">

  <jsp:include page="nav.jsp" />
  <div class="container-fluid">
    <div class="container mt-2 pt-4 pb-3">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="background: transparent;">
          <li class="breadcrumb-item"><a href="#">Instructor</a></li>
          <li class="breadcrumb-item active" aria-current="page">Classes</li>
        </ol>
      </nav>
    </div>
  </div>

  <!-- Tabs -->
  <div class="container-fluid">
    <div class="container">
      <ul class="nav nav-tabs">
        <li class="nav-item">
          <a class="nav-link" href="instructor.jsp">Email</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="template.jsp">Template</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="classes.jsp">Classes</a>
        </li>
      </ul>
    </div>
  </div>

  <div class="container-fluid bg-white" style="min-height: 100vh;">
    <div class="container pb-5 pt-4">
      <div class="card mt-2">
        <div class="card-header">
          Create Class
        </div>
        <div class="card-body">
          <form>
            <div class="form-row">
              <div class="form-group col-md-5">
                <label for="inputCity">Location</label>
                <input type="text" class="form-control" id="inputCity" required>
                <small class="form-text text-muted">Ex: Phoenix, AZ</small>
              </div>
              <div class="form-group col-md-4">
                <label for="inputState">Stream</label>
                <select id="inputState" class="form-control" required>
                  <option selected>Java</option>
                  <option>Fat Data</option>
                </select>
              </div>
              <div class="form-group col-md-3 mt-lg-4 pt-lg-3 pl-lg-4">
                <div class="custom-control custom-radio custom-control-inline">
                    <input type="radio" class="custom-control-input" id="customRadio" name="example" value="customEx">
                    <label class="custom-control-label" for="customRadio"><small>Onsite</small></label>
                  </div>
                  <div class="custom-control custom-radio custom-control-inline">
                    <input type="radio" class="custom-control-input" id="customRadio2" name="example" value="customEx">
                    <label class="custom-control-label" for="customRadio2"><small>Offsite</small></label>
                  </div> 
              </div>
            </div>
            <div class="row justify-content-center">
              <a href="" class="btn btn-small btn-primary mt-3 rounded-0 px-3"><i class="fas fa-file-alt pr-2"></i> Upload</a>
            </div>
          </form>
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