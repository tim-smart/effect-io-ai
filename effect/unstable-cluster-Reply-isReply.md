Package: `effect`<br />
Module: `Reply`<br />

## Reply.isReply

Returns `true` when the supplied value is a runtime cluster reply, based on the
reply type identifier.

**Signature**

```ts
declare const isReply: (u: unknown) => u is Reply<Rpc.Any>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Reply.ts#L40)

Since v4.0.0