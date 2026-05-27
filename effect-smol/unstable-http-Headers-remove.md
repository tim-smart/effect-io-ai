Package: `effect`<br />
Module: `Headers`<br />

## Headers.remove

Returns a new `Headers` collection with the named header removed.

**Details**

The provided header name is normalized to lowercase before removal.

**Signature**

```ts
declare const remove: { (key: string): (self: Headers) => Headers; (self: Headers, key: string): Headers; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Headers.ts#L377)

Since v4.0.0