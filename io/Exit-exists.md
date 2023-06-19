# exists

Executes the predicate on the value of the specified exit if it is a
`Success`, otherwise returns `false`.

Part of the `Exit` module, imported from `@effect/io/Exit`.

**Signature**

```ts
export declare const exists: {
  <A>(predicate: Predicate<A>): <E>(self: Exit<E, A>) => boolean
  <E, A>(self: Exit<E, A>, predicate: Predicate<A>): boolean
}
```
