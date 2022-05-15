import type { AppProps } from "next/app";
import {
  ApolloClient,
  InMemoryCache,
  gql,
  ApolloProvider,
} from "@apollo/client";

import "../styles/globals.css";

function MyApp({ Component, pageProps }: AppProps) {
  const NEXT_PUBLIC_API_URL =
    process.env.NEXT_PUBLIC_API_URL || "http://localhost:3001";

  const client = new ApolloClient({
    uri: `${NEXT_PUBLIC_API_URL}/graphql/`,
    cache: new InMemoryCache(),
  });

  return (
    <ApolloProvider client={client}>
      <Component {...pageProps} />
    </ApolloProvider>
  );
}

export default MyApp;
