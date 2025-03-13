Package: `effect`<br />
Module: `Record`<br />

## Record.isSubrecordBy

Check if all the keys and values in one record are also found in another record.

**Signature**

```ts
declare const isSubrecordBy: <A>(equivalence: Equivalence<A>) => { <K extends string>(that: ReadonlyRecord<K, A>): (self: ReadonlyRecord<K, A>) => boolean; <K extends string>(self: ReadonlyRecord<K, A>, that: ReadonlyRecord<K, A>): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L990)

Since v2.0.0