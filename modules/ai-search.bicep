// params

@description('AI Search name')
param name string

@description('Resource Location')
param location string

@description('Tags')
param tags object

// resource

resource aiSearch 'Microsoft.Search/searchServices@2024-03-01-preview' = {
  name: name
  location: location
  tags: tags
  sku: {
    name: 'basic'
  }
}

// outputs
output name string = aiSearch.name
output id string = aiSearch.id
