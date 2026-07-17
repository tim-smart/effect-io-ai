Package: `effect`<br />
Module: `Headers`<br />

## Headers.has

Returns `true` when a header with the given name is present.

**Details**

The lookup lowercases the provided header name.

**Signature**

```ts
declare const has: { (key: string): (self: Headers) => boolean; (self: Headers, key: string): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Headers.ts#L231)

Since v4.0.0