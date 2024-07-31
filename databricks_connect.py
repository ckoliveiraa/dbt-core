import requests

# databricks details
DATABRICKS_INSTANCE = 'https://adb-6854250478934132.12.azuredatabricks.net/'
DATABRICKS_TOKEN = 'YOUR TOKEN'


# set instance for UC
url = f"{DATABRICKS_INSTANCE}/api/2.0/unity-catalog/catalogs"
headers = {
    "Authorization": f"Bearer {DATABRICKS_TOKEN}"
}

# list catalogs
response = requests.get(url, headers=headers)
# check connection
if response.status_code == 200:
    catalogs = response.json()
    print("Catálogos disponíveis no Unity Catalog:")
    for catalog in catalogs.get('catalogs', []):
        print(f" - {catalog['name']}")
else:
    print(f"Erro ao listar catálogos: {
          response.status_code} - {response.text}")
