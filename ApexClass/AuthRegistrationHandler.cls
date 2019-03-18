/**
 * @author: {{ author }}
 */
public class {{ api_name }} implements Auth.RegistrationHandler {

    public User createUser(Id portalId, Auth.UserData userData) {

		// Match the Auth.UserData to an existing user?
		// Update user details from Auth.UserData?
		// Provision a new user where the User does not exist?

        return null;
    }

    public void updateUser(Id userId, Id portalId, Auth.UserData userData) {

		// Update user details from Auth.UserData?

    }
}
