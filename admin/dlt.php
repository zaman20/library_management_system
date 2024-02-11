<script>
    	function delete_cat(id){
				//alert(id);
				document.getElementById('catId').setAttribute('value',id);
				if(confirm("Are you sure you want to delete this?"))
				{
					document.getElementById('dltForm').submit();
		
				}
				
			}
</script>