package com.example.demo_get

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

class NoteAdapter(var list: MutableList<NoteModal>) : RecyclerView.Adapter<NoteAdapter.ViewHoloder>(){
    class ViewHolder(itemView: View?) : RecyclerView.ViewHolder(itemView) {

        private val title: TextView = itemView.findViewById(R.id.txt_title_item)
        fun bindData(note: NoteModal, clickListener: (Int) -> Unit) {
            title.text = note.name
//            trash.setOnClickListener { clickListener(adapterPosition) }
        }
    }
    override fun getItemCount(): Int {
        return list.size;
    }
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        return ViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.item_list, parent, false))
    }

    override fun onBindViewHolder(holder:ViewHolder, position: Int) {
        holder.bindData(getItemCount(position), clickListener)
    }
}