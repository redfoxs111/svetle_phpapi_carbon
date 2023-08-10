<script>
	import { goto } from "$app/navigation";
	import { base } from '$app/paths';
	import {
		Form,
		FormGroup,
		TextInput,
		PasswordInput,
		Button,
		Grid,
		Row,
		Column
	} from 'carbon-components-svelte';
	import { onMount } from 'svelte';
	let username = '';
	let password = '';
	let endpoint = 'http://localhost:85/madam_foods/api/v1/index.php?request=' ;
	let data = {} ;
	$: disabled = !username || !password;

	async function handleLogin() {
    // Perform login logic here and set MTKARCACH_isAuthenticated and MTKARCASH_expirationTime if successful
    let data = {
      username: username,
      password: password
    };

    try {
      // Process the data here
			// connect database 
			const response = await fetch(endpoint+ "login/login", {
        method: 'POST',
        body: JSON.stringify(  (data) )
      });
      const res = await response.json();
			console.log( res ) 
			if ( res.data.length == 0 ) {
				alert('User or Password not correct !!!')
				return ;
			}
			localStorage.setItem('Madam_food_isAuthenticated',true);
			localStorage.setItem('Madam_food_main_user', res.data[0].user);
			localStorage.setItem('Madam_food_token', res.data.token);			
      const response_me = await fetch(endpoint+'user/me', {
        headers: {
          Authorization: `Bearer ${res.data.token}`,
        },
      });
      const res_me = await response_me.json();
			localStorage.setItem('Madam_food_expirationTime', res_me.data.expire);

			goto(base+'/');
		} catch (error) {
      console.error('Error fetching and processing data:', error);
    }
	}
	onMount(() => {
		localStorage.setItem('Madam_food_isAuthenticated',false);
		localStorage.setItem('Madam_food_expirationTime', null);
		localStorage.setItem('Madam_food_main_user', '[]');
		localStorage.setItem('Madam_food_menu_user', '[]');
		localStorage.setItem('Madam_food_token', null);
	});
</script>

<!-- <Mylinkpage/> -->
<main style="margin-top:0px ;">
	<div id="backg" style="background-color:white !important;">
		<h3 id="logo">Madam Foods</h3>
		<h3>Login</h3>
		<Form>
			<FormGroup>
				<TextInput labelText="Username" placeholder="Enter your user ..." bind:value={username} />
			</FormGroup>

			<FormGroup>
				<PasswordInput
					labelText="Password"
					placeholder="Enter your password..."
					bind:value={password}
				/>
			</FormGroup>

			<Button on:click={handleLogin} {disabled}>Login</Button>
		</Form>
	</div>
</main>

<style>
	#backg {
		text-align: center;
		padding: 1em;
		max-width: 30vw !important;
		margin: 0 auto;
		margin-top: 0vh;
		top: 50vh;
	}

	h1 {
		color: #ff3e00;
		text-transform: uppercase;
		font-size: 4em;
		font-weight: 100;
	}
	#logo {
		font-family: monospace;
		font-size: 3em;
		animation: color-change 1s infinite;
	}

	@keyframes color-change {
		0% {
			color: green;
		}
		50% {
			color: blue;
		}
		80% {
			color: orchid;
		}
		80% {
			color: red;
		}
	}
</style>
