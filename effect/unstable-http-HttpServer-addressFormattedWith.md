Package: `effect`<br />
Module: `HttpServer`<br />

## HttpServer.addressFormattedWith

Reads the current server address, formats it with `formatAddress`, and passes
the formatted address to the supplied effectful function.

**Signature**

```ts
declare const addressFormattedWith: <A, E, R>(f: (address: string) => Effect.Effect<A, E, R>) => Effect.Effect<A, E, HttpServer | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpServer.ts#L232)

Since v4.0.0