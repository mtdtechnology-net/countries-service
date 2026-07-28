const methods = {
  getCountriesCounties: {
    tags: ['Counties'],
    description: 'Get the curated Claim countries with their counties (a fixed business subset, not the full world dataset backing /states)',
    parameters: [],
    responses: {
      200: {
        description: 'countries and counties retrieved',
      },
    },
  },
  getSingleCountryCounties: {
    tags: ['Counties'],
    description: 'Get a single Claim country and its counties',
    parameters: [],
    requestBody: {
      content: {
        'application/json': {
          schema: {
            $ref: '#/components/schemas/countyPayload',
          },
        },
      },
      required: true,
    },
    responses: {
      200: {
        description: 'counties in {country} retrieved',
      },
    },
  },
};

module.exports = methods;
