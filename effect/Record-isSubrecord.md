## isSubrecord

Check if one record is a subrecord of another, meaning it contains all the keys and values found in the second record.
This comparison uses default equality checks (`Equal.equivalence()`).

**Signature**

```ts
declare const isSubrecord: { <K extends string, A>(that: ReadonlyRecord<K, A>): (self: ReadonlyRecord<K, A>) => boolean; <K extends string, A>(self: ReadonlyRecord<K, A>, that: ReadonlyRecord<K, A>): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L1009)

Since v2.0.0