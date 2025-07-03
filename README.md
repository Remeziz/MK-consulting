# 🚀 Ansible + Terraform Deployment

This project automatically provisions an AWS EC2 instance with Nginx installed and deploys `hello.txt` as `index.html` to the web server.  
**Terraform** manages the infrastructure, and **Ansible** handles the configuration.


## ⚙ How it works

### ✅ Deploy
- Automatically triggered on push to the `main` branch
- Steps:
  - Runs `terraform init`, `plan`, `apply`
  - Ansible configures the EC2 instance:
    - Installs Nginx
    - Copies `hello.txt` to `/usr/share/nginx/html/index.html`

### ✅ Destroy
- **Only triggered manually**
- To run:
  - Go to **Actions** tab in GitHub
  - Select the **Destroy** workflow
  - Click **Run workflow**

---

## 🌐 How to check the result

After `Terraform apply` runs:
1️⃣ Find the public IP address in the **Terraform Apply** step logs  
2️⃣ Open your browser and go to:

http://<public-ip>

You should see the contents of `hello.txt`.

📄 Location of hello.txt

ansible/playbooks/templates/hello.txt