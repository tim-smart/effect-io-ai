Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.filter

Filters entries out of a `HashMap` using the specified predicate.

**Signature**

```ts
declare const filter: { <K, A, B extends A>(f: (a: NoInfer<A>, k: K) => a is B): (self: HashMap<K, A>) => HashMap<K, B>; <K, A>(f: (a: NoInfer<A>, k: K) => boolean): (self: HashMap<K, A>) => HashMap<K, A>; <K, A, B extends A>(self: HashMap<K, A>, f: (a: A, k: K) => a is B): HashMap<K, B>; <K, A>(self: HashMap<K, A>, f: (a: A, k: K) => boolean): HashMap<K, A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L455)

Since v2.0.0