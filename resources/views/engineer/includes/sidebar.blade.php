<div class="logo">
    <a href="{{ route('engineer.index') }}" class="simple-text logo-normal">
        <img src="{{ asset('admin_theme/petro-logo.png') }}" width="120" class="img-fluid">
    </a>
</div>
<div class="sidebar-wrapper">
  <ul class="nav">
    <li class="nav-item {{ Route::currentRouteName() == 'engineer.index' ? 'active' : '' }}">
    <a class="nav-link" href="{{ route('engineer.index') }}">
        <i class="material-icons">dashboard</i>
        <p>Dashboard</p>
      </a>
    </li>
    <li class="nav-item {{ Route::currentRouteName() == 'engineer.jobs.list' || Route::currentRouteName() == 'engineer.form.form'  ? 'active' : '' }}">
      <a class="nav-link" href="{{ route('engineer.jobs.list') }}">
        <i class="material-icons">list</i>
        <p>Jobs</p>
      </a>
    </li>
    <li class="nav-item {{ Route::currentRouteName() == 'engineer.profile.index' ? 'active' : '' }}">
      <a class="nav-link" href="{{ route('engineer.profile.index') }}">
        <i class="material-icons">person</i>
        <p>Profile</p>
      </a>
    </li>
  </ul>
</div>