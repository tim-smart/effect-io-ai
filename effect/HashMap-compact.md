Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.compact

Filters out `None` values from a `HashMap` of `Options`s.

**Signature**

```ts
declare const compact: <K, A>(self: HashMap<K, Option<A>>) => HashMap<K, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L447)

Since v2.0.0