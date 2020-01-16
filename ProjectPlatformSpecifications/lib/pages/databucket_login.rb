class AdminPage
    include PageObject
    text_field(:email, 'id' => 'admin_user_session_email')
    text_field(:password, 'id' => 'admin_user_session_password')
    button(:sign_in_admin, value: 'Sign in')
    p(:username_holder, 'class': 'navbar-text')
    end