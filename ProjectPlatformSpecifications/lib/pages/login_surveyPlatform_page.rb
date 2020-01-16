class LoginPage
        include PageObject
        text_field(:email, 'id' => 'admin_user_session_email')
        text_field(:password, 'id' => 'admin_user_session_password')
        button(:sign_in, value: 'Sign In')
        p(:username_holder, 'class': 'navbar-text')
end