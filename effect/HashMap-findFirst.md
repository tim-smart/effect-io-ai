Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.findFirst

Returns the first element that satisfies the specified
predicate, or `None` if no such element exists.

**Signature**

```ts
declare const findFirst: { <K, A, B extends A>(predicate: (a: NoInfer<A>, k: K) => a is B): (self: HashMap<K, A>) => Option<[K, B]>; <K, A>(predicate: (a: NoInfer<A>, k: K) => boolean): (self: HashMap<K, A>) => Option<[K, A]>; <K, A, B extends A>(self: HashMap<K, A>, predicate: (a: A, k: K) => a is B): Option<[K, B]>; <K, A>(self: HashMap<K, A>, predicate: (a: A, k: K) => boolean): Option<[K, A]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L447)

Since v2.0.0