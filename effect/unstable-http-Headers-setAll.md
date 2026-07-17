Package: `effect`<br />
Module: `Headers`<br />

## Headers.setAll

Returns a new `Headers` collection with all provided headers set.

**Details**

Input headers are normalized with `fromInput` and override existing headers with the same lowercase name.

**Signature**

```ts
declare const setAll: { (headers: Input): (self: Headers) => Headers; (self: Headers, headers: Input): Headers; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Headers.ts#L289)

Since v4.0.0