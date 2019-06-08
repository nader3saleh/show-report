#  ShowReport _[working title]_

An iOS 13 app for tracking theatre attendance and reviews, for iPad and iPhone

## Core purpose

As a reviewer, I see a lot of plays, musicals and the occasional dance piece.
Some I see off my own bat, and I may or may not write reviews.

For others, I may be commissioned by publications. The commissioning process
varies from publication to publication: I may be asked directly to review a
specific piece, or alternatively I may have to bid for reviews from a list of
forthcoming productions.

Of the latter kind, I'll often be assigned to review a show, but will have to
await confirmation of ticket(s) at a later date.

At the moment, I use a combination of multiple calendars: one per publication,
with additional calendars for personal theatre attendance and shows for which I
have pitched, but have not yet been allocated to. In addition to the multiple
calendars, I will also use text annotations in the event headings to denote
whether the press ticket(s) have been confirmed, and whether I have been
allocated a +1.

While this isn't a bad system, it is cumbersome. I'd like to be able to do this
all in one place. It'd be nice to be able to track my review pubblications as
well: once they go online, can I generate nicely formatted social media posts to
promote them, for example.

But also, I want to learn some of the new techniques for data managemnt, UI
construction and view synchronisation available in iOS 13. With that in mind,
I'm going to commit to using **no third party libraries**.

Some of the technologies I intend to use:

- **CoreData** for internal data management
- **CloudKit** for synchronising data across iPad and iPhone instances
- **SwiftUI** for user interface development
- **Combine** for reactive UI updates

Some other plans include:

- Files integration for import of photos, press releases, etc.
- Natural language processing for extracting key information (production names,
  actor names, press night dates) from incoming text
