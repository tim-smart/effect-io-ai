## forEach

Applies the specified function to the values of the `HashSet`.

**Signature**

```ts
declare const forEach: { <A>(f: (value: A) => void): (self: HashSet<A>) => void; <A>(self: HashSet<A>, f: (value: A) => void): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L260)

Since v2.0.0