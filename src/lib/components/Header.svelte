<script>
   import {
    Header,
    HeaderNav,
    HeaderNavItem,
    HeaderNavMenu,
    HeaderUtilities,
    SkipToContent,
  } from "carbon-components-svelte"; 
	import { goto } from "$app/navigation";
	import { base } from '$app/paths'; 
	import { onMount } from "svelte";
  let isSideNavOpen = false; 
  let auth = ''
  let Username = ''
  onMount( ()=>{
    setTimeout(async ()=>{
      auth = await localStorage.getItem('Madam_food_isAuthenticated'); 
      Username = await localStorage.getItem('Madam_food_main_user');    
    },300)
    
  })

</script>
<Header company="Madam" platformName="Foods" bind:isSideNavOpen>
  <svelte:fragment slot="skip-to-content">
    <SkipToContent />
  </svelte:fragment>
  <HeaderNav>
    <HeaderNavItem href="{base}/" text="Home" />
    <HeaderNavItem href="{base}/checkbill" text="check bill" />
    <HeaderNavItem href="{base}/login" text="log off" />      
    <!-- <HeaderNavMenu text="Menu">
      <HeaderNavItem href="/" text="Link 1" />
      <HeaderNavItem href="/" text="Link 2" />
      <HeaderNavItem href="/" text="Link 3" />
    </HeaderNavMenu> -->
  </HeaderNav>
  <HeaderUtilities>
    <a class="bx--header__name">
      <span class="bx--header__name--prefix">{Username}</span> 
    </a>
  </HeaderUtilities>
</Header>