Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.every

Checks if all entries in a hashmap meets a specific condition.

**Signature**

```ts
declare const every: { <K, A>(predicate: (a: NoInfer<A>, k: K) => boolean): (self: HashMap<K, A>) => boolean; <K, A>(self: HashMap<K, A>, predicate: (a: A, k: K) => boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L495)

Since v3.14.0