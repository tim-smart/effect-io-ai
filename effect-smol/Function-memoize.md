Package: `effect`<br />
Module: `Function`<br />

## Function.memoize

Creates a memoized function whose input is an object, caching results by
object identity.

**When to use**

Use to reuse the result of a synchronous computation whose output is stable
for a given object reference.

**Details**

Each memoized wrapper owns a private `WeakMap` keyed by object identity.
Cached `undefined` results are still returned because the cache is checked
with `WeakMap.has`.

**Gotchas**

Structurally equal objects do not share cache entries. If the same object is
mutated after its first call, later calls still return the cached result for
that reference.

**Signature**

```ts
declare const memoize: <A extends object, O>(f: (a: A) => O) => (ast: A) => O
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L1443)

Since v4.0.0