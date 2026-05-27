Package: `effect`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.Handlers.Item

Record stored for a registered endpoint handler.

**Details**

It keeps the endpoint metadata, handler function, whether raw request handling
is used, and whether the handler should run uninterruptibly.

**Signature**

```ts
type Item<R> = {
    readonly endpoint: HttpApiEndpoint.AnyWithProps
    readonly handler: HttpApiEndpoint.Handler<any, any, R>
    readonly isRaw: boolean
    readonly uninterruptible: boolean
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiBuilder.ts#L291)

Since v4.0.0