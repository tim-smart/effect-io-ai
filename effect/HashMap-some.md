Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.some

Checks if any entry in a hashmap meets a specific condition.

**Signature**

```ts
declare const some: { <K, A>(predicate: (a: NoInfer<A>, k: K) => boolean): (self: HashMap<K, A>) => boolean; <K, A>(self: HashMap<K, A>, predicate: (a: A, k: K) => boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L460)

Since v3.13.0