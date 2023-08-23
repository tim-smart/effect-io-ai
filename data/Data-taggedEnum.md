# taggedEnum

Create a constructor for a tagged union of `Data` structs.

You can also pass a `TaggedEnum.WithGenerics` if you want to add generics to
the constructor.

To import and use `taggedEnum` from the "Data" module:

```ts
import * as Data from '@effect/data/Data'

// Can be accessed like this
Data.taggedEnum
```

**Example**

```ts
import * as Data from '@effect/data/Data'

const HttpError = Data.taggedEnum<
  | Data.Data<{ _tag: 'BadRequest'; status: 400; message: string }>
  | Data.Data<{ _tag: 'NotFound'; status: 404; message: string }>
>()

const notFound = HttpError('NotFound')({ status: 404, message: 'Not Found' })
```

**Example**

```ts
import * as Data from '@effect/data/Data'

type MyResult<E, A> = Data.TaggedEnum<{
  Failure: { error: E }
  Success: { value: A }
}>
interface MyResultDefinition extends Data.TaggedEnum.WithGenerics<2> {
  readonly taggedEnum: MyResult<this['A'], this['B']>
}
const MyResult = Data.taggedEnum<MyResultDefinition>()

const success = MyResult('Success')({ value: 1 })
```

**Signature**

```ts
export declare const taggedEnum: {
  <Z extends TaggedEnum.WithGenerics<1>>(): <K extends Z['taggedEnum']['_tag']>(
    tag: K
  ) => <A>(
    args: TaggedEnum.Args<TaggedEnum.Kind<Z, A, unknown, unknown, unknown>, K>
  ) => Extract<TaggedEnum.Kind<Z, A, unknown, unknown, unknown>, { readonly _tag: K }>
  <Z extends TaggedEnum.WithGenerics<2>>(): <K extends Z['taggedEnum']['_tag']>(
    tag: K
  ) => <A, B>(
    args: TaggedEnum.Args<TaggedEnum.Kind<Z, A, B, unknown, unknown>, K>
  ) => Extract<TaggedEnum.Kind<Z, A, B, unknown, unknown>, { readonly _tag: K }>
  <Z extends TaggedEnum.WithGenerics<3>>(): <K extends Z['taggedEnum']['_tag']>(
    tag: K
  ) => <A, B, C>(
    args: TaggedEnum.Args<TaggedEnum.Kind<Z, A, B, C, unknown>, K>
  ) => Extract<TaggedEnum.Kind<Z, A, B, C, unknown>, { readonly _tag: K }>
  <Z extends TaggedEnum.WithGenerics<4>>(): <K extends Z['taggedEnum']['_tag']>(
    tag: K
  ) => <A, B, C, D>(
    args: TaggedEnum.Args<TaggedEnum.Kind<Z, A, B, C, D>, K>
  ) => Extract<TaggedEnum.Kind<Z, A, B, C, D>, { readonly _tag: K }>
  <A extends Data<{ readonly _tag: string }>>(): <K extends A['_tag']>(
    tag: K
  ) => Case.Constructor<Extract<A, { readonly _tag: K }>, '_tag'>
}
```
