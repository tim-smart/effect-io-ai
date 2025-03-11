## retainIf

Retains only elements from the queue matching the specified predicate.

**Signature**

```ts
declare const retainIf: { <A>(predicate: Predicate<A>): (self: TPriorityQueue<A>) => STM.STM<void>; <A>(self: TPriorityQueue<A>, predicate: Predicate<A>): STM.STM<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPriorityQueue.ts#L160)

Since v2.0.0