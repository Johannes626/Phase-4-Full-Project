import './App.css';
import {useEffect, useState} from "react"

function App() {
  //holds logged in user
  const [currentUser, setCurrentUser] = useState(null)
  //holds user input
  const [userToLogin, setUserToLogin] = useState({
    username: "",
    password: ""
  })
  console.log("state of currentUser :", currentUser)

  useEffect(()=>{
    fetch("/userInSession")
    .then(res => res.json())
    .then(loggedInUser => {
      setCurrentUser(loggedInUser)
    })
  }, [])

  const handleLoginInputs = (e) => {
    setUserToLogin({...userToLogin,
      [e.target.name]: e.target.value,
    })
  }
  
  const handleLoginSubmit = (e) => {
    e.preventDefault()
    fetch("/login", {
      method: "POST",
      headers: {"Content-Type": "application/json"},
      body: JSON.stringify(userToLogin)
    })
    .then(res => res.json())
    .then(userLogged => {
      setCurrentUser(userLogged)
    })
  }

  const handleLogout = () => {
    fetch("/logout", {method: "DELETE"})
    .then(res => res.json())
    .then(deleteResponse => {
      setCurrentUser(null)
      console.log(deleteResponse)
    })
  }

  return (
    <div>
      {currentUser ? 
      <>
        <h1>{`PLACEHOLDER FOR NEXT COMPONENT, HELLO ${currentUser.username}`}</h1>
        <button onClick={handleLogout}>LogOut</button>
      </> : 
      <div className="login-container">
        <h2>Welcome to SYM, please login to continue!</h2>
        <form onSubmit={handleLoginSubmit}>
          <input placeholder="Username" name="username" onChange={handleLoginInputs}/>
          <input type="password" placeholder="Password" name="password" onChange={handleLoginInputs}/>
          <input type="submit"/>
        </form>
      </div>}
    </div>
  );
}

export default App;
