Package: `effect`<br />
Module: `Record`<br />

## Record.every

Check if all entries in a record meet a specific condition.

**Signature**

```ts
declare const every: { <A, K extends string, B extends A>(refinement: (value: A, key: K) => value is B): (self: ReadonlyRecord<K, A>) => self is ReadonlyRecord<K, B>; <A, K extends string>(predicate: (value: A, key: K) => boolean): (self: ReadonlyRecord<K, A>) => boolean; <A, K extends string, B extends A>(self: ReadonlyRecord<K, A>, refinement: (value: A, key: K) => value is B): self is ReadonlyRecord<K, B>; <K extends string, A>(self: ReadonlyRecord<K, A>, predicate: (value: A, key: K) => boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L1046)

Since v2.0.0