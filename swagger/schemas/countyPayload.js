module.exports = {
  type: 'object',
  description: 'payload for a single Claim country\'s counties',
  properties: {
    country: {
      $ref: '#/components/schemas/countryName',
    },
    code: {
      type: 'string',
      description: 'ISO country code',
      example: 'RO',
    },
  },
  example: {
    country: 'Romania',
  },
};
