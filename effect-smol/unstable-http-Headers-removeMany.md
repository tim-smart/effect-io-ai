Package: `effect`<br />
Module: `Headers`<br />

## Headers.removeMany

Returns a new `Headers` collection with each named header removed.

**Details**

Each provided header name is normalized to lowercase before removal.

**Signature**

```ts
declare const removeMany: { (keys: Iterable<string>): (self: Headers) => Headers; (self: Headers, keys: Iterable<string>): Headers; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Headers.ts#L400)

Since v4.0.0