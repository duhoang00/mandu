import type { NextPage } from "next";
import { useMemo } from "react";
import { gql, useQuery } from "@apollo/client";

const GraphqlTest: NextPage = () => {
  const { data } = useQuery(
    gql`
      query GetProducts {
        product {
          id
          productBrand
          productName
          productDescription
        }
      }
    `
  );

  const products = useMemo(() => {
    console.log({ data });
    return data?.product ?? [];
  }, [data]);

  if (!products) {
    return <>No data</>;
  }
  return (
    <>
      {products?.map((product: any) => (
        <div key={product?.id}>
          <li>ID: {product?.id}</li>
          <li>Brand: {product?.productBrand}</li>
          <li>Name: {product?.productName}</li>
          <li>Description: {product?.productDescription}</li>
        </div>
      ))}
    </>
  );
};

export default GraphqlTest;
