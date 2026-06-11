Package: `effect`<br />
Module: `Headers`<br />

## Headers.merge

Returns a new `Headers` collection containing headers from both collections.

**Details**

Headers from the second collection override headers from the first collection with the same name.

**Signature**

```ts
declare const merge: { (headers: Headers): (self: Headers) => Headers; (self: Headers, headers: Headers): Headers; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Headers.ts#L311)

Since v4.0.0