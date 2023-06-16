# noneOrFail

Lifts an `Option` into a `Effect`. If the option is empty it succeeds with
`void`. If the option is defined it fails with the content.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const noneOrFail: <E>(option: Option.Option<E>) => Effect<never, E, void>
```
