# getOrFailDiscard

Lifts an `Option` into a `IO`, if the option is not defined it fails with
`void`.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const getOrFailDiscard: <A>(option: Option.Option<A>) => Effect<never, void, A>
```
