class UserMailer < ApplicationMailer
  default from: 'louis.lorgere@noos.fr'
 
  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    # mail(from: 'test@communs.fr', to: @user.email, subject: 'Bienvenue sur Event Zone !')
  end

  def new_attendance(attendance)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @event = attendance.event
    @user = attendance.user
    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    # mail(from: 'test@communs.fr', to: @user.email, subject: 'Bienvenue sur Event Zone !')
  end
end
