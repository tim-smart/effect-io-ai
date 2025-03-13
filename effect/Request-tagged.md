Package: `effect`<br />
Module: `Request`<br />

## Request.tagged

Constructs a new `Request`.

**Signature**

```ts
declare const tagged: <R extends Request<any, any> & { _tag: string; }>(tag: R["_tag"]) => Request.Constructor<R, "_tag">
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Request.ts#L120)

Since v2.0.0