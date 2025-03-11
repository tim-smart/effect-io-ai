## seek

Drops elements from the queue while they do not satisfy the predicate,
taking and returning the first element that does satisfy the predicate.
Retries if no elements satisfy the predicate.

**Signature**

```ts
declare const seek: { <A>(predicate: Predicate<A>): (self: TDequeue<A>) => STM.STM<A>; <A>(self: TDequeue<A>, predicate: Predicate<A>): STM.STM<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L336)

Since v2.0.0