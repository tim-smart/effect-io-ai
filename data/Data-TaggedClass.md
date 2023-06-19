# TaggedClass

Provides a Tagged constructor for a Case Class.

Part of the `Data` module, imported from `@effect/data/Data`.

**Signature**

```ts
export declare const TaggedClass: <Key extends string>(
  tag: Key
) => new <A extends Record<string, any>>(
  args: IsEqualTo<Omit<A, keyof Equal.Equal>, {}> extends true ? void : Omit<A, keyof Equal.Equal>
) => Data<A & { _tag: Key }>
```
