import type { NextPage } from "next";
import { ApolloClient, InMemoryCache, gql } from "@apollo/client";

const Home: NextPage = () => {
  return <>HI</>;
};

export default Home;

export async function getStaticProps() {
  const client = new ApolloClient({
    uri: "http://localhost:3001/graphql/",
    cache: new InMemoryCache(),
  });

  const { data } = await client.query({
    query: gql`
      query GetProducts {
        product {
          id
          productName
        }
      }
    `,
  });

  console.log({ ...data });

  const rs = { props: { ...data } };

  return rs;
}
