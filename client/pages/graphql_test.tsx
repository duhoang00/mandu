import type { NextPage } from "next";
import { ApolloClient, InMemoryCache, gql } from "@apollo/client";

const Home: NextPage = ({ data }: any) => {
  const products = data?.product;
  if (!products) {
    return <>No data</>;
  }
  return (
    <>
      {products.map((product: any) => (
        <div key={product.id}>
          <li>ID: {product.id}</li>
          <li>Brand: {product.productBrand}</li>
          <li>Name: {product.productName}</li>
          <li>Description: {product.productDescription}</li>
        </div>
      ))}
    </>
  );
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
          productBrand
          productName
          productDescription
        }
      }
    `,
  });

  const rs = { props: { data } };

  return rs;
}
