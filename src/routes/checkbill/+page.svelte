<script>
	import {
		Content,
		Grid,
		Row,
		Column,
		Button,
		Dropdown,
		Pagination
	} from 'carbon-components-svelte';
	import { DataTable } from 'carbon-components-svelte';
	import Header from '$lib/components/Header.svelte';
	let endpoint = 'http://localhost:85/madam_foods/api/v1/index.php?request=';
	import { onMount } from 'svelte';
	let headers = [
		{ key: 'tableid', value: 'tableid' },
		{ key: 'productname', value: 'productname' },
		{ key: 'price', value: 'price' },
		{ key: 'send', value: 'send' },
		{ key: 'payed', value: 'payed' }
	];
	let rows = [
		// {id:1 ,tableid : '1' , productid :"02001" , productname : 'ทดสอบ 2' ,price : '50' ,send : '0' , payed : '0' },
		// {id:2 ,tableid : '2' , productid :"01001" , productname : 'ทดสอบ 1' ,price : '50' ,send : '0' , payed : '0' },
		// {id:3 ,tableid : '2' , productid :"02001" , productname : 'ทดสอบ 2' ,price : '50' ,send : '0' , payed : '0' }
	];
	function addmenu(row) {
		if (row) {
			let olddata = Object.assign([], rows);
			olddata.push({
				id: rows.length + 1,
				tableid: tableselect.tableid,
				productid: row.pcode,
				productname: row.pname,
				price: row.price,
				send: '0',
				payed: '0'
			});
			rows = {};
			rows = Object.assign([], olddata);
			page = 1;
			pageSize = 50;
		}
	}

	let pageSize = 50;
	let page = 1;

	let products = [];
	let tables = [];
	let filteredRowIds = '';
	let tableselect = {
		tableid: '1'
	};
	async function productall() {
		// Perform login logic here and set MTKARCACH_isAuthenticated and MTKARCASH_expirationTime if successful
		try {
			let token = await localStorage.getItem('Madam_food_token');
			const response_me = await fetch(endpoint + 'products/getall', {
				headers: {
					Authorization: `Bearer ${token}`
				}
			});
			const res_me = await response_me.json();
			products = Object.assign([], res_me.data);
		} catch (error) {
			console.error('Error fetching and processing data:', error);
		}
	}
	async function tableall() {
		// Perform login logic here and set MTKARCACH_isAuthenticated and MTKARCASH_expirationTime if successful
		try {
			let token = await localStorage.getItem('Madam_food_token');
			const response_me = await fetch(endpoint + 'tables/getall', {
				headers: {
					Authorization: `Bearer ${token}`
				}
			});
			const res_me = await response_me.json();
			tables = Object.assign([], res_me.data);
		} catch (error) {
			console.error('Error fetching and processing data:', error);
		}
	}

	onMount(() => {
		productall();
		tableall();
	});
</script>

<main style="margin-top:0px ;">
	<Header />
	<Content>
		<Grid>
			<Row>
				<Column>
					<br />
					<Row>
						{#each tables as item}
							<Column md={4} lg={4}>
								<Button style="padding:5px !important; min-width:8vw ;min-height:4vh ;" size="lg" kind="secondary" on:click={addmenu(item)}>{item.tablename}</Button><br>
							</Column>
						{/each}
					</Row>
				</Column>
				<Column>
					<h2>เก็บเงิน</h2>
					<DataTable stickyHeader {headers} {rows} {pageSize} {page} />

					<Pagination
						bind:pageSize
						bind:page
						totalItems={filteredRowIds.length}
						pageSizeInputDisabled
					/>
				</Column>
			</Row>
		</Grid>
	</Content>
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
