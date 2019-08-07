const { books } = require('../mocks/data');

const resolvers = {
  Query: {
    books: () => books,
  },
};

module.exports = resolvers;
