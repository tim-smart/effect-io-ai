# TaggedClass

Provides a Tagged constructor for a Case Class.

To import and use `TaggedClass` from the "Data" module:

```ts
import * as Data from '@effect/data/Data'

// Can be accessed like this
Data.TaggedClass
```

**Signature**

```ts
export declare const TaggedClass: <Key extends string>(
  tag: Key
) => new <A extends Record<string, any>>(
  args: Types.Equals<Omit<A, keyof Equal.Equal>, {}> extends true ? void : Omit<A, keyof Equal.Equal>
) => Data<A & { _tag: Key }>
```
