Package: `effect`<br />
Module: `Headers`<br />

## Headers.set

Returns a new `Headers` collection with the given header set.

**Details**

The header name is normalized to lowercase.

**Signature**

```ts
declare const set: { (key: string, value: string): (self: Headers) => Headers; (self: Headers, key: string, value: string): Headers; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Headers.ts#L311)

Since v4.0.0