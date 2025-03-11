## instanceOf

Matches instances of a given class.

**Signature**

```ts
declare const instanceOf: <A extends abstract new (...args: any) => any>(constructor: A) => SafeRefinement<InstanceType<A>, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L1046)

Since v1.0.0