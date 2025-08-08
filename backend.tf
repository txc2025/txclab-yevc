terraform { 
  cloud { 
    
    organization = "turbonomic-terraform-lab" 

    workspaces { 
      name = "{{REPO_NAME}}" 
    } 
  } 
}
