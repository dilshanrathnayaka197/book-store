class DatabaseService {
  // Top Rated Books List
  static List<Map<String, dynamic>> topRatedBooks = [
    {
      "id": 1,
      "name": "Atomic Habits",
      "author": "James Clear",
      "description": "A book about building good habits and breaking bad ones.",
      "image":
          "https://mdgunasena.com/wp-content/uploads/2021/06/atomic-ha.jpg",
      "price": 12.99,
      "pages": 320,
      "language": "English",
      "rating": 4.8,
    },
    {
      "id": 2,
      "name": "The Psychology of Money",
      "author": "Morgan Housel",
      "description": "Timeless lessons on wealth, greed, and happiness.",
      "image":
          "https://www.rajbooks.com/wp-content/uploads/2023/06/9780857197689.jpg",
      "price": 14.50,
      "pages": 256,
      "language": "English",
      "rating": 4.7,
    },
    {
      "id": 3,
      "name": "Rich Dad Poor Dad",
      "author": "Robert Kiyosaki",
      "description": "Financial education and wealth-building strategies.",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4_8RBxSwl67-AvqRR61qm9znOltvnUIdpTw&s",
      "price": 10.99,
      "pages": 336,
      "language": "English",
      "rating": 4.6,
    },
    {
      "id": 4,
      "name": "Pride and Prejudice",
      "author": "Mark Manson",
      "description": "A counterintuitive approach to living a good life.",
      "image":
          "https://m.media-amazon.com/images/M/MV5BMTA1NDQ3NTcyOTNeQTJeQWpwZ15BbWU3MDA0MzA4MzE@._V1_.jpg",
      "price": 11.99,
      "pages": 224,
      "language": "English",
      "rating": 4.5,
    },
    {
      "id": 5,
      "name": "Think and Grow Rich",
      "author": "Napoleon Hill",
      "description": "Classic principles of success and wealth.",
      "image":
          "https://www.hachettebookgroup.com/wp-content/uploads/2023/09/9780306834721.jpg",
      "price": 9.99,
      "pages": 238,
      "language": "English",
      "rating": 4.8,
    },
    {
      "id": 6,
      "name": "The 5 AM Club",
      "author": "Robin Sharma",
      "description": "Morning routines for success and productivity.",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuGdyzGNZZx7i2rnkSBGRiDl_L4BB9NY5Hrw&s",
      "price": 13.50,
      "pages": 336,
      "language": "English",
      "rating": 4.4,
    },
    {
      "id": 7,
      "name": "Can't Hurt Me",
      "author": "David Goggins",
      "description": "Mastering your mind and pushing limits.",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFOlYYfwlTmvxHBVzyNnjp2y40ue0xv_LS0Q&s",
      "price": 15.99,
      "pages": 364,
      "language": "English",
      "rating": 4.9,
    },
    {
      "id": 8,
      "name": "Deep Work",
      "author": "Cal Newport",
      "description": "Rules for focused success in a distracted world.",
      "image": "https://m.media-amazon.com/images/I/71pqZChaJkL._SL1500_.jpg",
      "price": 16.99,
      "pages": 296,
      "language": "English",
      "rating": 4.7,
    },
    {
      "id": 9,
      "name": "The Power of Now",
      "author": "Eckhart Tolle",
      "description": "A guide to spiritual enlightenment.",
      "image":
          "https://static-01.daraz.lk/p/3d2bb38341497ccef96eee18bdd76ecc.jpg",
      "price": 12.50,
      "pages": 236,
      "language": "English",
      "rating": 4.6,
    },
    {
      "id": 10,
      "name": "Man's Search for Meaning",
      "author": "Viktor E. Frankl",
      "description": "A powerful memoir about finding purpose.",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLy2Csg2YOr9kFtCseAXyBH2aRKWXzErks2Q&s",
      "price": 10.75,
      "pages": 200,
      "language": "English",
      "rating": 4.8,
    },
  ];

  static List<Map<String, dynamic>> newBooks = [
    {
      "id": 11,
      "name": "The Mountain Is You",
      "author": "Brianna Wiest",
      "description": "Transforming self-sabotage into self-mastery.",
      "image":
          "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1590806892i/53642699.jpg",
      "price": 14.99,
      "pages": 300,
      "language": "English",
      "rating": 4.7,
    },
    {
      "id": 12,
      "name": "The Subtle Art of Not Giving a F*ck",
      "author": "Mark Manson",
      "description": "A counterintuitive approach to living a good life.",
      "image": "https://m.media-amazon.com/images/I/71QKQ9mwV7L.jpg",
      "price": 13.99,
      "pages": 224,
      "language": "English",
      "rating": 4.6,
    },
    {
      "id": 13,
      "name": "Dopamine Nation",
      "author": "Dr. Anna Lembke",
      "description":
          "Understanding addiction and finding balance in a dopamine-driven world.",
      "image":
          "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1629679336i/55723020.jpg",
      "price": 17.50,
      "pages": 304,
      "language": "English",
      "rating": 4.8,
    },
    {
      "id": 14,
      "name": "The Courage to Be Disliked",
      "author": "Ichiro Kishimi & Fumitake Koga",
      "description": "A Japanese philosophy on happiness and self-confidence.",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMwCRzCgfAT2jNWkIsXxcQ3WL7EeShA9guSQ&s",
      "price": 12.75,
      "pages": 288,
      "language": "English",
      "rating": 4.7,
    },
    {
      "id": 15,
      "name": "Breath: The New Science of a Lost Art",
      "author": "James Nestor",
      "description":
          "Exploring the power of proper breathing for health and performance.",
      "image": "https://m.media-amazon.com/images/I/71gxuHqAF-L.jpg",
      "price": 16.25,
      "pages": 304,
      "language": "English",
      "rating": 4.8,
    },
    {
      "id": 16,
      "name": "The Almanack of Naval Ravikant",
      "author": "Eric Jorgenson",
      "description":
          "A guide to wealth, happiness, and life philosophy from Naval Ravikant.",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwuZfwhL4e1XmvMENy4lW3KGqKNjCONkrNxg&s",
      "price": 11.99,
      "pages": 242,
      "language": "English",
      "rating": 4.9,
    },
    {
      "id": 17,
      "name": "Make Your Bed",
      "author": "Admiral William H. McRaven",
      "description":
          "Simple habits that can change your life and maybe the world.",
      "image":
          "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1495769497i/31423133.jpg",
      "price": 10.99,
      "pages": 144,
      "language": "English",
      "rating": 4.5,
    },
    {
      "id": 18,
      "name": "The Comfort Crisis",
      "author": "Michael Easter",
      "description":
          "Taking on challenges to build resilience and a meaningful life.",
      "image":
          "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1601481119i/55120630.jpg",
      "price": 18.99,
      "pages": 304,
      "language": "English",
      "rating": 4.6,
    },
    {
      "id": 19,
      "name": "Awaken the Giant Within",
      "author": "Tony Robbins",
      "description":
          "Strategies for taking control of your emotions, finances, and life.",
      "image": "https://m.media-amazon.com/images/I/71YxsXL5wjL.jpg",
      "price": 13.50,
      "pages": 544,
      "language": "English",
      "rating": 4.8,
    },
    {
      "id": 20,
      "name": "The Four Agreements",
      "author": "Don Miguel Ruiz",
      "description": "A practical guide to personal freedom and self-mastery.",
      "image":
          "https://static-01.daraz.lk/p/226cd647dddd169345313785a19af6f9.jpg",
      "price": 9.99,
      "pages": 160,
      "language": "English",
      "rating": 4.7,
    },
  ];
}
